.class Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;->c:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;->c:Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;->a(Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
