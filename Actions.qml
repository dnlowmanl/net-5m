/*
 * Copyright (C) 2014 Vishesh Handa <vhanda@kde.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) version 3, or any
 * later version accepted by the membership of KDE e.V. (or its
 * successor approved by the membership of KDE e.V.), which shall
 * act as a proxy defined in Section 6 of version 3 of the license.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

import QtQuick 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.0

import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.core 2.0 as PlasmaCore

ColumnLayout {
    Label {
        text: "Actions"
        font.bold: true
        color: "white"
    }
    Button {
        iconName: "edit-rename"
        text: "Rename"
    }
    Button {
        iconName: "object-flip-vertical"
        text: "Flip"
    }
    Button {
        iconName: "object-flip-horizontal"
        text: "Mirror"
    }
    Button {
        iconName: "object-rotate-left"
        text: "Rotate 9O left"
    }
    Button {
        iconName: "object-rotate-right"
        text: "Rotate 9O right"
    }
}
