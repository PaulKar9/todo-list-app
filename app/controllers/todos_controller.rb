# Created by: Pavel (Paul) Kardash
# Date: Sep. 20, 2015
# This is the controller

class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	# adding new todo item
	def new
		@todo = Todo.new
	end

	# creating new todo item
	def create
		@todo = Todo.create(todo_params)
		redirect_to 'http://localhost:3000/todos'
	end

	# required parametar and permitted parameter
	private
	def todo_params
		params.require(:todo).permit(:item)
	end
end
