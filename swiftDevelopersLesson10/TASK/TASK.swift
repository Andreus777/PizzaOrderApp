//
//  TASK.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import Foundation
//0. Посмотреть 9, 10 урок про NavigationViewController
//1. Создать приложение используя Storyboard (никакого кода для UI)
//2. Создать экран авторизации с вводом номера телефона ( клавиатура содержит только цифры) и пароль
//3. Создать второй экран, где будет выбор блюда, при выборе пицца переходим на следующий экран, добавить вверх экрана заголовок Food и не должно быть кнопки назад (на navigation баре) (при выборе суши никуда не переходим)
//4. Создать на экране два вида пиццы, с разными названиями и картинками, вверху экране вместо кнопки назад должна быть просто стрелка (как в дизайне), при нажатии на кнопку добавить (+) переходим на следующий экран выбора ингредиентов (отображаем модально)
//5. Передаем картинку и название пиццы с предыдущего экрана, делаем ингредиенты и свитчи, при нажатии на кнопку выбрать переходим на экран оплаты (отображаем в полный экран)
//6. Создать экран оплаты, на котором необходимо спрятать Navigation Bar, а вместо него добавить заголовок оплата, отображаем пиццу и выбранные ингридиенты с предыдущего экрана , добавить выбор способа оплаты (если выбираем наличные отключается свитч оплата картой и наборот)
//7. При нажатии на кнопку оплаты показываем алерт об успешной оплате заказа, при нажатии на кнопку ОК мы переходим на экран выбора еды (второй после экрана авторизации)
//*Опционально улучшить дизайн приложения
//* Опционально добавить кнопку на экране выбора ингредиентов которая будет модально отображать еще одно окно которое будет содержать информацию с составом и количеством калорий выбранной пиццы
//* Опционально добавить фичу которая поможет собрать обратную связь
//* Опционально любая фича которая позволит улучшить данный бизнес