.class final Lcom/alipay/android/phone/home/manager/e;
.super Ljava/lang/Object;
.source "AppCenterOnItemLongClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/e;->a:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 161
    return-void
.end method
