.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;
.super Ljava/lang/Object;
.source "PubAppMessage.java"


# instance fields
.field public agreementId:Ljava/lang/String;

.field public eventType:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public messageType:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public thirdAccount:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
