class Employee < User
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://click.dj/img/no-avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :name, presence: { message: 'Campo não pode ficar em branco.' }
  validates :email, presence: { message: 'Inserir um e-mail válido.' }, uniqueness:{ message:'E-mail já cadastrado.' }
  validates :password, presence: { message: 'Campo não pode ficar em branco.' }
  validates :position, presence: true
  validates :birth_date, presence: true
  validates :rg, allow_blank: true, numericality: { only_integer: true, message: 'Somente números.' }
  validates :cpf, allow_blank: true, uniqueness:{ message:'CPF já cadastrado' }, numericality: { only_integer: true, message: 'Somente números.' }
  validates :telephone, presence: true, numericality: { only_integer: true, message: 'Somente números.' }
  validates :admission_date, presence: true


  before_save :upcase_name

  has_many :gymcards

  def upcase_name
    self.name = self.name.upcase
  end

  private

  self.per_page = 5
end
