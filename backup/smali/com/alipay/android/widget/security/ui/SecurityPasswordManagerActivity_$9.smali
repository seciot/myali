.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

    iput-boolean p3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$9;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    return-void
.end method
