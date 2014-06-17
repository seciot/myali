.class final Lcom/alipay/android/widget/security/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

.field final synthetic b:Lcom/alipay/android/widget/security/service/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/f;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/g;->b:Lcom/alipay/android/widget/security/service/f;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/g;->a:Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/g;->b:Lcom/alipay/android/widget/security/service/f;

    iget-object v0, v0, Lcom/alipay/android/widget/security/service/f;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/g;->a:Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/g;->b:Lcom/alipay/android/widget/security/service/f;

    iget-object v2, v2, Lcom/alipay/android/widget/security/service/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->access$200(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;Ljava/lang/String;)V

    return-void
.end method
