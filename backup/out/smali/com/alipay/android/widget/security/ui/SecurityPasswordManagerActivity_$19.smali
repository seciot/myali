.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$19;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;)V

    return-void
.end method
