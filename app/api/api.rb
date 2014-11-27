class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::Rabl
  default_format :json
  # /api
  prefix 'api'
  # /api/v1
  version 'v1', using: :path

  # /api/v1/empties
  resource :empties do
    # POST /api/v1/empties/
    desc 'トイレの空き情報更新'
    params do
      requires :room_id, type: Integer, desc: 'Room ID'
      requires :status, type: Boolean, desc: 'Room status'
    end
    post do
      @room = Room.find(params[:room_id])
      @room.update_attribute(:available, params[:status])
    end
  end

  # /api/v1/toilets
  resource :toilets do
    # POST /api/v1/toilets
    desc '地図上のトイレ情報の取得'
    params do
      requires :mesh_numbers, type: Array, desc: 'Mesh numbers'
    end
    post do
      @buildings = []
      mesh_numbers = params[:mesh_numbers]
      mesh_numbers.each {|mesh|
        # 検索に必要な座標の取得
        x_start = ( mesh.to_f %  10 ** 5 ) / 100.0 - 180
        y_start = ( mesh.to_f /  10 ** 5 ) / 100.0 - 90
        x_end = x_start + 0.01
        y_end = y_start + 0.01

        # DB検索
        results = Building.where(longitude: x_start...x_end, latitude: y_start...y_end )
        results.each {|building|
          @buildings.push(building)
        }
      }

      # JSON整形
      @buildings.to_json({:include => {:toilets => {:include => :rooms}}})
    end
  end
end
