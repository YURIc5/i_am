module AnimalsHelper
  def dogs
    dog = Type.find_by(name: "犬")
    dog.id
  end

  def cats
    cat = Type.find_by(name: "猫")
    cat.children.ids
  end

  def age(animal)
    t = Date.today.year
    if animal.birth_year == t
      case animal.type.parent.name
      when "犬" then
        "子犬"
      else
        "子猫"
      end
    elsif animal.birth_year <= t + 10
      case animal.type.parent.name
      when "犬" then
        "老犬"
      else
        "老猫"
      end
    else
      case animal.type.parent.name
      when "犬" then
        "成犬"
      else
        "成猫"
      end
    end
  end

  def vaccine(animal)
    case animal.vaccine
    when 1 then
      "接種済み"
    when 2 then
      "未接種です"
    else
      "不明"
    end
  end

  def castration(animal)
    case animal.castration
    when 1 then
      "去勢済み"
    when 2 then
      "去勢していません"
    else
      "不明"
    end
  end

  def gender(animal)
    case animal.gender
      when 1 then
        "♂"
      when 2 then
        "♀"
      else
        "不明"
      end
  end

  def size(animal)
    case animal.size
    when 1 then
      "小型"
    when 2 then
      "中型"
    when 3 then
      "大型"
    else
      "不明"
    end
  end

  def senior(animal)
    case animal.senior_application
    when 1 then
      "高齢者応募可"
    when 2 then
      "高齢者応募不可"
    else
      "不明"
    end
  end

  def single(animal)
    case animal.single_application
    when 1 then
      "単身者応募可"
    when 2 then
      "単身者応募不可"
    else
      "不明"
    end
  end
end
