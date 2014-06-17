.class final Lcom/alipay/mobile/security/accountmanager/ui/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/dm;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/dm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dn;->a:Lcom/alipay/mobile/security/accountmanager/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dn;->a:Lcom/alipay/mobile/security/accountmanager/ui/dm;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Ljava/lang/String;)V

    return-void
.end method
