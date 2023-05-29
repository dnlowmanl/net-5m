/*
 *   Copyright 2017 by Atul Sharma <atulsharma406@gmail.com>
 * 
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0 as Controls
import org.kde.purpose 1.0 as Purpose
import org.kde.kirigami 2.1 as Kirigami

Controls.Popup {
    id: window
    modal: true
    focus: true
    property alias inputData: view.inputData
    property bool running: false
    signal finished(var output, int error, string message)
    width: Kirigami.Units.gridUnit * 25
    height: Kirigami.Units.gridUnit * 28
    
    Controls.BusyIndicator {
        visible: window.running
        anchors.fill: parent
    }

    Rectangle {
        anchors.fill: parent
        color: Kirigami.Theme.viewBackgroundColor
        Purpose.AlternativesView {
            id: view
            anchors.fill:parent
            clip: true
            pluginType: "Export"
            header: Kirigami.Heading {
                text: window.inputData.mimeType ? i18n("Shares for '%1'", window.inputData.mimeType) : ""
            }
            delegate: Kirigami.BasicListItem {
                label: model.display
                icon: "arrow-right"
                onClicked: view.createJob (model.index)
                Keys.onReturnPressed: view.createJob (model.index)
                Keys.onEnterPressed: view.createJob (model.index)
            }
            
            onRunningChanged: window.running = running
            onFinished: {
                window.finished(output, error, message)
            }
        }
    }
}
