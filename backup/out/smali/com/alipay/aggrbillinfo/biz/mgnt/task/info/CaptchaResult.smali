.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/CaptchaResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public captchaBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptchaBase64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/CaptchaResult;->captchaBase64:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptchaBase64(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/CaptchaResult;->captchaBase64:Ljava/lang/String;

    return-void
.end method
