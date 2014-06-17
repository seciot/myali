.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    iput-boolean p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$4;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Z)V

    return-void
.end method
