class Habit

# connect to postgres
DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'habit_tracker_api_development'})

# initialize options hash
def initialize(opts = {}, id = nil)
  @id = id.to_i
  @task_item = opts["habit_item"]
  @completed = opts["completed"]
end

  # ==================================================
  #                 PREPARED STATEMENTS
  # ==================================================
  # find habit
  DB.prepare("find_habit",
    <<-SQL
      SELECT habits.*
      FROM habits
      WHERE habits.id = $1;
    SQL
  )

  # create task
  DB.prepare("create_habit",
    <<-SQL
      INSERT INTO habits (habit_item, completed)
      VALUES ( $1, $2 )
      RETURNING id, habit_item, completed;
    SQL
  )

  # delete habit
  DB.prepare("delete_habit",
    <<-SQL
      DELETE FROM habits
      WHERE id=$1
      RETURNING id;
    SQL
  )

  # update habit
  DB.prepare("update_habit",
    <<-SQL
      UPDATE habits
      SET habit_item = $2, completed = $3
      WHERE id = $1
      RETURNING id, habit_item, completed;
    SQL
  )

  # ==================================================
  #                      ROUTES
  # ==================================================
  # get all habits
  def.self.all

  end

  #get one habit by id
  def self.find id

  end

  #create a habit
  def self.create opts

  end

  #delete a habit
  def self.delete id

  end

  #update a habit
  def self.update id, opts

  end

end #Habit class end
