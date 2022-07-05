//
//  AuthErrors.swift
//  TasksWithFirebase
//
//  Created by Максим Боталов on 05.07.2022.
//

import Foundation

enum AuthError {
    case notFields
    case invalidMail
    case invalidPassword
    case passwordsDontMatch
    case unknownError
    case serverError
    case notUser
    case cannotUnwrapToUserModel
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .notFields:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .invalidMail:
            return NSLocalizedString("Формат почты неверный", comment: "")
        case .passwordsDontMatch:
            return NSLocalizedString("Пароли не совпадают", comment: "")
        case .unknownError:
            return NSLocalizedString("Неизвестная ошибка", comment: "")
        case .serverError:
            return NSLocalizedString("Нет связи с сервером", comment: "")
        case .invalidPassword:
            return NSLocalizedString("Неверный формат пароля", comment: "")
        case .notUser:
            return NSLocalizedString("Невозможно найти пользователя", comment: "")
        case .cannotUnwrapToUserModel:
            return NSLocalizedString("Невозможна конвертация", comment: "")
        }
    }
}
