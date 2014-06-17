.class public Lcom/alipay/publiccore/biz/relation/msg/result/BaseResult;
.super Ljava/lang/Object;


# instance fields
.field public resultCode:I

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseResult;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseResult;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseResult;->resultCode:I

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseResult;->resultMsg:Ljava/lang/String;

    return-void
.end method
