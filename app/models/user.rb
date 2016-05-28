class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        
  
  has_many :posts       
  def name
    firstname + ' ' + lastname
  end    
  
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true ,  length: { minimum: 6}
  
end
