class Pollock3 < Assessment
  def client_age
    client.try(:age)
  end
end
