class Backer 
  attr_reader :name 
  
  def initialize(name)
    @name = name 
    @backed_projects = []
  end 
  
  def backed_projects 
    @backed_projects
  end 
  
  def back_project(project)
    @backed_projects << project 
    project.add_backer(self) unless project.backers.include?(self) 
    # also adds the backer to the projects backers array 
  end 
end 