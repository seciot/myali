.class public Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "widget_msg_table"
.end annotation


# static fields
.field public static final USER_ID:Ljava/lang/String; = "userId"

.field public static final WIDGET_ID:Ljava/lang/String; = "widgetId"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private persistenceCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private style:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private temporaryCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private widgetId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPersistenceCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->persistenceCount:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTemporaryCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->temporaryCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setPersistenceCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->persistenceCount:I

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->style:Ljava/lang/String;

    return-void
.end method

.method public setTemporaryCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->temporaryCount:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->userId:Ljava/lang/String;

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->widgetId:Ljava/lang/String;

    return-void
.end method
