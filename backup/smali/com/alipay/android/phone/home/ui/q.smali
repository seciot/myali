.class final Lcom/alipay/android/phone/home/ui/q;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/q;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/q;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$100(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    .line 166
    const-string/jumbo v0, "20000056"

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;)V

    .line 167
    return-void
.end method
