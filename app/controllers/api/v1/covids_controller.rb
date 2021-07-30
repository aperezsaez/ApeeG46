module Api
  module V1
    class CovidsController < V1Controller
      def by_date
        @client = Client.find_by(name: request.headers["Cliente"])
        @client.log_in_count += 1
        @client.save
        @covids = Covid.find_by(day: params[:date])
        render json: jsoned_covid(@covids)
      end

      def bdates
        covids = Covid.where("DATE(day) BETWEEN ? AND ?", params[:date1], params[:date2])
        render json: covids
      end


      private

      def jsoned_covid(covids)
        array = []
          h = {}
          h['day'] = covids.day.strftime("%Y/%m/%d")
          h['deceaseds'] = covids.deceaseds
          h['total_cases'] = covids.total_cases
          h['new_cases'] = covids.new_cases
          h['actives'] = covids.actives
          array << h
        return array
      end
    end    
  end
end