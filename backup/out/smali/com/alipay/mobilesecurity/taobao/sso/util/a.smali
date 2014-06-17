.class final Lcom/alipay/mobilesecurity/taobao/sso/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/android/ssologin/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/ssologin/c;
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
