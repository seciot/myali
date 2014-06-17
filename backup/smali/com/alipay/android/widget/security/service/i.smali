.class final Lcom/alipay/android/widget/security/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

.field final synthetic b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/i;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/i;->a:Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/i;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/i;->a:Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->access$300(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;)V

    return-void
.end method
