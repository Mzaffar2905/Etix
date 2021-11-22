class ChangeRegistrationApprovedToCarRegistration < ActiveRecord::Migration[6.0]
  def change
    change_column :car_registrations, :registration_approved, :string, default: "pending"
  end
end
