.class final Lcom/alipay/android/phone/home/manager/h;
.super Ljava/lang/Object;
.source "BaseAppsItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/g;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/android/phone/home/manager/g;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/h;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/android/phone/home/manager/g;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/g;->c:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/h;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/android/phone/home/manager/g;

    iget-object v2, v2, Lcom/alipay/android/phone/home/manager/g;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/android/phone/home/manager/g;

    iget-object v1, v1, Lcom/alipay/android/phone/home/manager/g;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v1, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/android/phone/home/manager/g;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/g;->c:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method
