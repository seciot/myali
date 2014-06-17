.class final Lcom/alipay/android/phone/home/ui/p;
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
    .line 154
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$000(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    .line 158
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b()V

    .line 159
    return-void
.end method
