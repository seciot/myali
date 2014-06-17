.class final Lcom/alipay/mobile/security/accountmanager/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/an;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/an;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ap;->b:Lcom/alipay/mobile/security/accountmanager/ui/an;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ap;->a:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ap;->a:Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;->a()V

    return-void
.end method
