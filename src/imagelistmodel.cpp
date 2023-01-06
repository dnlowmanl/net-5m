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

#include "imagelistmodel.h"
#include <QMimeDatabase>
#include <QDebug>

ImageListModel::ImageListModel(QObject* parent)
    : QAbstractListModel(parent)
{
}

ImageListModel::~ImageListModel()
{
}

QHash<int, QByteArray> ImageListModel::roleNames() const
{
    QHash<int, QByteArray> hash = QAbstractListModel::roleNames();
    hash.insert(UrlRole, "url");
    hash.insert(MimeTypeRole, "mimeType");
    
    return hash;
}

QVariant ImageListModel::data(const QModelIndex& index, int role) const
{
    if( !index.isValid()) {
        return QVariant();
    }
    
    int indexValue = index.row();
    QMimeDatabase db;
    
    switch( role) {
        case UrlRole:
            return m_images.at(indexValue);
            
        case MimeTypeRole:
            return db.mimeTypeForFile(m_images.at(indexValue)).name();
            
    }
    
    return QVariant();
}

int ImageListModel::rowCount(const QModelIndex& parent) const
{
    Q_UNUSED(parent)
    return m_images.size();
}

QStringList ImageListModel::imageList() const
{
    return m_images;
}

void ImageListModel::setImageList(QStringList images)
{
    m_images = images;
}

#include "moc_imagelistmodel.cpp"