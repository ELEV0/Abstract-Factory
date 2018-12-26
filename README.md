


<p align="center">
<img src="https://img.shields.io/badge/Swift-4.2-orange.svg" alt="Swift 4.2"/>
<img src="https://img.shields.io/badge/Xcode-10%2B-brightgreen.svg" alt="XCode 10+"/>
<img src="https://img.shields.io/badge/platform-iOS-green.svg" alt="iOS"/>
<img src="https://img.shields.io/badge/iOS-12%2B-brightgreen.svg" alt="iOS 12"/>
<img src="https://img.shields.io/badge/licence-MIT-lightgray.svg" alt="Licence MIT"/>
</p>


# Abstract Factory

(порождающий)
Позволяет создавать связанные объекты, не привязываясь к конкретным классам

## Шаги
#### 1) Выделить общие интерфейсы для отдельных продуктов, составляющих семейства

<div align = "center">
<img src="/images/1step.png" width="750">
</div>

```swift
protocol Chair {
    var name: String { get }
    var type: String { get }
}
```
```swift
class ChairBedroom: Chair {
    var name: String = "Стул"
    var type: String = "Стул для спальни"
}
```
```swift
class ChairKitchen: Chair {
    var name: String = "Стул"
    var type: String = "Стул для кухни"
}
```

#### 2) Для каждой вариации семейства продуктов мы должны создать свою собственную фабирку

<div align = "center">
<img src="/images/2step.png" width="750">
</div>

```swift
protocol AbstractFactory {
    func createChair() -> Chair
}
```
```swift
class BedroomFactory: AbstractFactory {

    func createChair() -> Chair {
        print("Стул для спальни создан")
    return ChairBedroom()
    }
}
```
```swift
class KitchenFactory: AbstractFactory {

    func createChair() -> Chair {
        print("Стул для кухни создан")
    return ChairKitchen()
    }
}
```

### Positive side
- [x]  Гарантирует сочетаемость создаваемых продуктов
- [x] Избавляет клиентский код от привязки к конкретным классам продуктов (Абстрактный)
- [x] Выделяет код производства в одно место, упрощая поддержку кода
- [x] Реализует принцип открытости / закрытости (2 принцип солида) (основные принципы ООП) 

### Negative side
* Усложняет код программы из-за введения множества дополнительных классов
* Требует наличия всех типов документов в каждой вариации


## Workspace

#### Create property

```swift
var chair: Chair?
```
#### Create IBAction

```swift
@IBAction func orderKitchenAction(_ sender: UIButton) {
    chair = KitchenFactory().createChair()
}
```
```swift
@IBAction func orderBedroomAction(_ sender: UIButton) {
    chair = BedroomFactory().createChair()
}
```

## Requirements

* Swift 4.2
* iOS 12 or higher

## Authors

* **Alexandr Kustov** -  [ELEV0](https://github.com/ELEV0)

## Communication

* If you **found a bug**, open an issue.
* If you **have a feature request**, open an issue.
* If you **want to contribute**, submit a pull request.

## License

This project is licensed under the MIT License.
