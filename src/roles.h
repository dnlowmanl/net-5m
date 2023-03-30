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

#ifndef ROLES_H
#define ROLES_H

#include <QObject>

class Roles : public QObject {
   Q_OBJECT
   Q_ENUMS(RoleNames)
public:
    Roles(QObject* parent);
    ~Roles();
    enum RoleNames {
        ImageUrlRole = Qt::UserRole + 1,
        MimeTypeRole,
        Thumbnail,
        ItemTypeRole,
        FilesRole,
        FileCountRole,
        DateRole,
        SelectedRole,
        SourceIndex
    };
    
};

#endif
