.class public Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "avatar_crop_image"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/android/avatar/process/CropImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "avatar_crop"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operations_cancel"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operations_confirm"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operations_rotate"
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/android/avatar/b/a;

.field private f:Lcom/alipay/mobile/android/avatar/a/a/a;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->j:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->m:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    :cond_1
    :goto_0
    const-string/jumbo v1, ""

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setImage  \u4e0d\u9700\u8981\u624b\u52a8\u8bbe\u7f6e\u56fe\u7247\uff0c\u76f4\u63a5\u8fd4\u56de\u56fe\u7247 url ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "imageUrl"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->e()V

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const-string/jumbo v5, "__tmp_avatar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Ljava/io/File;)Z

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, ""

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->writeBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->getCropBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.alipay.ext.editavatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendExtMessage value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "useravatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->invalidate()V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->recycle()V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f()V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->finish()V

    return-void
.end method

.method private f()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    iget-object v2, v2, Lcom/alipay/mobile/android/avatar/process/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tmp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setActivity(Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/android/avatar/b/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/avatar/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->e:Lcom/alipay/mobile/android/avatar/b/a;

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "input-type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "extInvoke"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    const-string/jumbo v2, "headEdit"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startGettingAvatar extInvoke: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startGettingAvatar headEdit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->m:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "output"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "__tmp_avatar.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(I)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f:Lcom/alipay/mobile/android/avatar/a/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/avatar/a/a/a;->a(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes;->getResultStatus()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_4

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cS:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(I)V

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes;->getUserHeadImgPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->e:Lcom/alipay/mobile/android/avatar/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":lastLoginUserAvtarPath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mobile/android/avatar/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "__tmp_avatar.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "__tmp_avatar.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->finish()V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    :goto_2
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->d()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    :cond_4
    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->cP:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(I)V

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->recycle()V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f()V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->finish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->recycle()V

    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f()V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->finish()V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "__tmp_avatar.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setBitmap(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onActivityResult bitMapPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->recycle()V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f()V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cH:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "operateType"

    const-string/jumbo v1, "cancel"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->e()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cI:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cR:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cJ:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->rotateBitmap(F)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/android/avatar/a/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/android/avatar/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f:Lcom/alipay/mobile/android/avatar/a/a/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->j:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->j:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->recycle()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->l:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "operateType"

    const-string/jumbo v1, "cancel"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->recycle()V

    invoke-direct {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->f()V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "bitMapPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRestoreInstanceState mBitMapPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->setBitmap(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->a:Lcom/alipay/mobile/android/avatar/process/CropImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/avatar/process/CropImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->b()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "bitMapPath"

    iget-object v1, p0, Lcom/alipay/mobile/android/avatar/process/EditAvatarActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
