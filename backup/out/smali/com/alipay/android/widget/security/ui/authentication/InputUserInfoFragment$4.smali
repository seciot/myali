.class Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;->a()Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    return-void
.end method
