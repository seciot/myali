.class final Lcom/alipay/mobile/security/authcenter/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/j;->a:Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/j;->a:Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/j;->a:Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->b()V

    :cond_0
    return-void
.end method
