class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :destroy]

    def index
        @employees = Employee.all 
    end 

    def new
        @employee = Employee.new 
    end 

    def create 
        @employee = Employee.new(employee_params)
        @employee.save
        redirect_to @employee
    end 

    def edit
    end 

    def update
        @employee.update(employee_params)
        @employee.save
        redirect_to @employee
    end 

    def show 
    end 

    def destroy
        @employee.delete
    end 

    private 

    def find_employee
        @employee = Employee.find(params[:id])
    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end 


end
