class HomepageController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def recipes_by_course
  	@course = Course.find(params[:course_id])
  	@recipes = Recipe.all
  	@recipes_by_course = []

  	#loop through all products, and add to recipes_by_course if it matches the filtered course
  	@recipes.each do |recipe|
  		if recipe.course.id == params[:course_id].to_i
  			@recipes_by_course.push(recipe)
  		end
  	end
  end

  def recipes_by_dietary
  end
end
