.class public Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgCode()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public setMsgCode([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->a:[Ljava/lang/String;

    return-void
.end method
