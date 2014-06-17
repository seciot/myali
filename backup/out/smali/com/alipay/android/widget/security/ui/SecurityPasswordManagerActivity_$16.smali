.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->d:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->d:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$16;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
