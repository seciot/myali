.class final Lcom/alipay/android/widget/security/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/c;->a:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateDidCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u751f\u6210did\u540e\u8fdb\u884c\u56de\u8c03\uff0c\u8fd4\u56dedid\u6570\u636e,did="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
