Factory.define :purchase do |p|
  p.date    Date.today
  p.amount  1500
  p.comment "foo bar"
end
