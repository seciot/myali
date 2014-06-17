.class public Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WidgetMsg.db"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->b:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    return-void
.end method

.method public getWidgetMsgDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->b:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 2

    if-eq p4, p3, :cond_0

    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
