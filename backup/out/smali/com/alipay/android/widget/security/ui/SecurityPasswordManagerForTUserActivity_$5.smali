.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->d:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->d:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$5;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
