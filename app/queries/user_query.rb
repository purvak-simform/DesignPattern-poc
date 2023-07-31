class UserQuery
  def initialize(users = User.all)
    @users = users
  end

  def active
    @users.where(status: "active")
  end

  def archived
    @users.where(status: "archived")
  end

  def old_users
    @users.where(created_at: :asc)
  end
end