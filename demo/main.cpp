#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "../src/loader.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QmlMaterial::initialize();
    QQmlApplicationEngine engine;
    engine.addImportPath(QStringLiteral("qrc:/"));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
