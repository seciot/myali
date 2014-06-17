.class final Lcom/alipay/mobile/security/authcenter/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/e;->a:Lcom/alipay/mobile/security/authcenter/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/e;->a:Lcom/alipay/mobile/security/authcenter/ui/d;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/d;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/e;->a:Lcom/alipay/mobile/security/authcenter/ui/d;

    iget-object v1, v1, Lcom/alipay/mobile/security/authcenter/ui/d;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/e;->a:Lcom/alipay/mobile/security/authcenter/ui/d;

    iget-object v2, v2, Lcom/alipay/mobile/security/authcenter/ui/d;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
