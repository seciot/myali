.class public final Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;
.super Ljava/lang/Object;


# instance fields
.field backgroundColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;->resolveColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getBackgroundColorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;->backgroundColor:Ljava/lang/String;

    return-void
.end method
