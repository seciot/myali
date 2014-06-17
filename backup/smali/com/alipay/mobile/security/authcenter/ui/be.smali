.class final Lcom/alipay/mobile/security/authcenter/ui/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;

.field final synthetic d:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->d:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->c:Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->d:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/be;->c:Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;->a(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V

    return-void
.end method
