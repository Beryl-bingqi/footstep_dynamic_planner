/****************************************************************************
** Meta object code from reading C++ file 'planning_description_configuration_wizard.h'
**
** Created: Fri Jun 28 10:46:56 2013
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../include/planning_environment/tools/planning_description_configuration_wizard.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'planning_description_configuration_wizard.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PlanningDescriptionConfigurationWizard[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      49,   40,   39,   39, 0x05,
      74,   69,   39,   39, 0x05,

 // slots: signature, parameters, type, tag, flags
     110,   99,   39,   39, 0x0a,
     134,   99,   39,   39, 0x0a,
     158,   69,   39,   39, 0x0a,
     184,   99,   39,   39, 0x0a,
     212,   99,   39,   39, 0x0a,
     236,   99,   39,   39, 0x0a,
     262,   99,   39,   39, 0x0a,
     286,   99,   39,   39, 0x0a,
     314,   39,   39,   39, 0x0a,
     341,   39,   39,   39, 0x0a,
     359,   39,   39,   39, 0x0a,
     372,   39,   39,   39, 0x0a,
     388,   39,   39,   39, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_PlanningDescriptionConfigurationWizard[] = {
    "PlanningDescriptionConfigurationWizard\0"
    "\0progress\0changeProgress(int)\0name\0"
    "changeLabel(const char*)\0checkState\0"
    "easyButtonToggled(bool)\0hardButtonToggled(bool)\0"
    "labelChanged(const char*)\0"
    "verySafeButtonToggled(bool)\0"
    "safeButtonToggled(bool)\0"
    "normalButtonToggled(bool)\0"
    "fastButtonToggled(bool)\0"
    "veryFastButtonToggled(bool)\0"
    "dofSelectionTableChanged()\0dofTogglePushed()\0"
    "writeFiles()\0autoConfigure()\0update()\0"
};

void PlanningDescriptionConfigurationWizard::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PlanningDescriptionConfigurationWizard *_t = static_cast<PlanningDescriptionConfigurationWizard *>(_o);
        switch (_id) {
        case 0: _t->changeProgress((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->changeLabel((*reinterpret_cast< const char*(*)>(_a[1]))); break;
        case 2: _t->easyButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->hardButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->labelChanged((*reinterpret_cast< const char*(*)>(_a[1]))); break;
        case 5: _t->verySafeButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->safeButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->normalButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->fastButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->veryFastButtonToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->dofSelectionTableChanged(); break;
        case 11: _t->dofTogglePushed(); break;
        case 12: _t->writeFiles(); break;
        case 13: _t->autoConfigure(); break;
        case 14: _t->update(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PlanningDescriptionConfigurationWizard::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PlanningDescriptionConfigurationWizard::staticMetaObject = {
    { &QWizard::staticMetaObject, qt_meta_stringdata_PlanningDescriptionConfigurationWizard,
      qt_meta_data_PlanningDescriptionConfigurationWizard, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PlanningDescriptionConfigurationWizard::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PlanningDescriptionConfigurationWizard::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PlanningDescriptionConfigurationWizard::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PlanningDescriptionConfigurationWizard))
        return static_cast<void*>(const_cast< PlanningDescriptionConfigurationWizard*>(this));
    return QWizard::qt_metacast(_clname);
}

int PlanningDescriptionConfigurationWizard::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWizard::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
    return _id;
}

// SIGNAL 0
void PlanningDescriptionConfigurationWizard::changeProgress(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void PlanningDescriptionConfigurationWizard::changeLabel(const char * _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
static const uint qt_meta_data_SetupGroupsWizardPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      23,   22,   22,   22, 0x0a,
      50,   22,   22,   22, 0x0a,
      70,   22,   22,   22, 0x0a,
      95,   22,   22,   22, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_SetupGroupsWizardPage[] = {
    "SetupGroupsWizardPage\0\0"
    "deleteGroupButtonClicked()\0"
    "groupTableClicked()\0addKinematicChainGroup()\0"
    "addJointCollectionGroup()\0"
};

void SetupGroupsWizardPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SetupGroupsWizardPage *_t = static_cast<SetupGroupsWizardPage *>(_o);
        switch (_id) {
        case 0: _t->deleteGroupButtonClicked(); break;
        case 1: _t->groupTableClicked(); break;
        case 2: _t->addKinematicChainGroup(); break;
        case 3: _t->addJointCollectionGroup(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData SetupGroupsWizardPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SetupGroupsWizardPage::staticMetaObject = {
    { &QWizardPage::staticMetaObject, qt_meta_stringdata_SetupGroupsWizardPage,
      qt_meta_data_SetupGroupsWizardPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SetupGroupsWizardPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SetupGroupsWizardPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SetupGroupsWizardPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SetupGroupsWizardPage))
        return static_cast<void*>(const_cast< SetupGroupsWizardPage*>(this));
    return QWizardPage::qt_metacast(_clname);
}

int SetupGroupsWizardPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWizardPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
static const uint qt_meta_data_KinematicChainWizardPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      26,   25,   25,   25, 0x0a,
      46,   25,   25,   25, 0x0a,
      65,   25,   25,   25, 0x0a,
      80,   25,   25,   25, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_KinematicChainWizardPage[] = {
    "KinematicChainWizardPage\0\0baseLinkTreeClick()\0"
    "tipLinkTreeClick()\0showTreeLink()\0"
    "resetPage()\0"
};

void KinematicChainWizardPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        KinematicChainWizardPage *_t = static_cast<KinematicChainWizardPage *>(_o);
        switch (_id) {
        case 0: _t->baseLinkTreeClick(); break;
        case 1: _t->tipLinkTreeClick(); break;
        case 2: _t->showTreeLink(); break;
        case 3: _t->resetPage(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData KinematicChainWizardPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject KinematicChainWizardPage::staticMetaObject = {
    { &QWizardPage::staticMetaObject, qt_meta_stringdata_KinematicChainWizardPage,
      qt_meta_data_KinematicChainWizardPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &KinematicChainWizardPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *KinematicChainWizardPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *KinematicChainWizardPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_KinematicChainWizardPage))
        return static_cast<void*>(const_cast< KinematicChainWizardPage*>(this));
    return QWizardPage::qt_metacast(_clname);
}

int KinematicChainWizardPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWizardPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
static const uint qt_meta_data_JointCollectionWizardPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      27,   26,   26,   26, 0x0a,
      39,   26,   26,   26, 0x0a,
      66,   26,   26,   26, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_JointCollectionWizardPage[] = {
    "JointCollectionWizardPage\0\0resetPage()\0"
    "selectJointButtonClicked()\0"
    "deselectJointButtonClicked()\0"
};

void JointCollectionWizardPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        JointCollectionWizardPage *_t = static_cast<JointCollectionWizardPage *>(_o);
        switch (_id) {
        case 0: _t->resetPage(); break;
        case 1: _t->selectJointButtonClicked(); break;
        case 2: _t->deselectJointButtonClicked(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData JointCollectionWizardPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject JointCollectionWizardPage::staticMetaObject = {
    { &QWizardPage::staticMetaObject, qt_meta_stringdata_JointCollectionWizardPage,
      qt_meta_data_JointCollectionWizardPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &JointCollectionWizardPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *JointCollectionWizardPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *JointCollectionWizardPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_JointCollectionWizardPage))
        return static_cast<void*>(const_cast< JointCollectionWizardPage*>(this));
    return QWizardPage::qt_metacast(_clname);
}

int JointCollectionWizardPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWizardPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
static const uint qt_meta_data_CollisionsWizardPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      22,   21,   21,   21, 0x0a,
      37,   21,   21,   21, 0x0a,
      52,   21,   21,   21, 0x0a,
      77,   21,   21,   21, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_CollisionsWizardPage[] = {
    "CollisionsWizardPage\0\0tableClicked()\0"
    "tableChanged()\0generateCollisionTable()\0"
    "toggleTable()\0"
};

void CollisionsWizardPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        CollisionsWizardPage *_t = static_cast<CollisionsWizardPage *>(_o);
        switch (_id) {
        case 0: _t->tableClicked(); break;
        case 1: _t->tableChanged(); break;
        case 2: _t->generateCollisionTable(); break;
        case 3: _t->toggleTable(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData CollisionsWizardPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject CollisionsWizardPage::staticMetaObject = {
    { &QWizardPage::staticMetaObject, qt_meta_stringdata_CollisionsWizardPage,
      qt_meta_data_CollisionsWizardPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &CollisionsWizardPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *CollisionsWizardPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *CollisionsWizardPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_CollisionsWizardPage))
        return static_cast<void*>(const_cast< CollisionsWizardPage*>(this));
    return QWizardPage::qt_metacast(_clname);
}

int CollisionsWizardPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWizardPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
static const uint qt_meta_data_OutputWizardPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      23,   18,   17,   17, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_OutputWizardPage[] = {
    "OutputWizardPage\0\0file\0fileSelected(QString)\0"
};

void OutputWizardPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        OutputWizardPage *_t = static_cast<OutputWizardPage *>(_o);
        switch (_id) {
        case 0: _t->fileSelected((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData OutputWizardPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject OutputWizardPage::staticMetaObject = {
    { &QWizardPage::staticMetaObject, qt_meta_stringdata_OutputWizardPage,
      qt_meta_data_OutputWizardPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &OutputWizardPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *OutputWizardPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *OutputWizardPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_OutputWizardPage))
        return static_cast<void*>(const_cast< OutputWizardPage*>(this));
    return QWizardPage::qt_metacast(_clname);
}

int OutputWizardPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWizardPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
