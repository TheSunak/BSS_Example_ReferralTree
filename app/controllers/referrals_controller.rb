class ReferralsController < ApplicationController

		def index


		end


		#lets us add more referrals
		def create

		  	#puts "WE GOT TO CREATE"

		    @referral = Referral.new

		    #Another way of doing this in a single line is to do it:
		    #@company = Company.new(params[:company])

		    #Need the [:teams] because its a hash based on the post, and then
		    #within that hash, we access the [:name]
		    @referral.from_name = params[:referral][:from_name]
		    @referral.from_email = params[:referral][:from_email]
		    @referral.referral_company = params[:referral][:referral_company]
		    @referral.to_name = params[:referral][:to_name]
		    @referral.to_email = params[:referral][:to_email]

		    @referral.save!

#companies_url is autogenerated by rails from the "resources: companies" that we typed
		    respond_to do |format|
		      format.html { redirect_to referrals_url }
		      format.json { render :json => @referral }
		    end

		  end

		 #update our teams us add more teams
		  def update
		  	
		  end

		 #gives us information about one of the teams
		 def show

		 	@referral = Referral.find(params[:id])

		    respond_to do |format|
		      format.html
		      format.json { render :json => @referral}
		    end

		 end
			
		 #Destroys a team
		 def destroy

		 end

		 #Returns all of the good students in a JSON hash
		 # def fivehundred_teams
		  #  @teams = Team.fivehundred_teams

		   # respond_to do |format|
		    #  format.json { render :json => @teams }
		    #end
		  
		  #end



end