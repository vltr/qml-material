#include <QtQml>
#include "loader.h"

#include "core/device.h"
#include "core/units.h"

static void registerTypes()
{
    qmlRegisterSingletonType<Device>("Material", 0, 1, "Device", Device::qmlSingleton);
    qmlRegisterUncreatableType<Units>("Material", 0, 3, "Units", QStringLiteral("Units can only be used via the attached property."));
}

#ifdef MATERIAL_NO_PLUGIN
#ifndef MATERIAL_DISABLE_AUTO_QML_REGISTER
Q_COREAPP_STARTUP_FUNCTION(registerTypes)
#endif // MATERIAL_DISABLE_AUTO_QML_REGISTER
#endif // MATERIAL_USER_INIT

void QmlMaterial::initialize()
{
#ifdef MATERIAL_NO_PLUGIN
#ifdef MATERIAL_DISABLE_AUTO_QML_REGISTER
    registerTypes();
#endif // MATERIAL_DISABLE_AUTO_QML_REGISTER
#endif // MATERIAL_NO_PLUGIN
}
