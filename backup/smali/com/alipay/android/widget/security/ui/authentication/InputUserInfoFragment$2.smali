.class Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;->c:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;->c:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
