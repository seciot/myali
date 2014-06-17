.class public Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;
.super Ljava/lang/Object;


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;->value:Ljava/lang/String;

    return-void
.end method
