.class public Lcom/alipay/mobile/lib/model/MessageActionParams;
.super Ljava/lang/Object;
.source "MessageActionParams.java"


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public couldDelete:Z

.field public index:I

.field public longClickDelete:Z

.field public msgBean:Lcom/alipay/mobile/lib/model/ResponseBaseMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/alipay/mobile/lib/model/ResponseBaseMessage;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->index:I

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->actionType:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->actionParam:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->couldDelete:Z

    .line 24
    iput-boolean p4, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->longClickDelete:Z

    .line 25
    iput-object p5, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->msgBean:Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 26
    iput p6, p0, Lcom/alipay/mobile/lib/model/MessageActionParams;->index:I

    .line 27
    return-void
.end method
