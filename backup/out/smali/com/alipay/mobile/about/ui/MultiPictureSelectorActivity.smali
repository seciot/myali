.class public Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;,
        Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;
    }
.end annotation


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private B:Z

.field private C:Z

.field a:Landroid/content/BroadcastReceiver;

.field b:Z

.field c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Landroid/widget/GridView;

.field private g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private h:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/about/ui/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Landroid/widget/HorizontalScrollView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Landroid/content/Intent;

.field private r:Landroid/content/Intent;

.field private s:Landroid/widget/Button;

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/alipay/mobile/about/b/b;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->z:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m:I

    iput v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->o:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->p:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    iput v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->u:I

    iput v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->b:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->o:J

    return-wide v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    :try_start_0
    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->h:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/view/ViewGroup;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-class v2, Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/RecycleabledImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/RecycleabledImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/RecycleabledImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Z)V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/app/Activity;JLjava/lang/String;Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "BUCKET_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "folderName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "current_count"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->A:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->z:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->z:[Ljava/lang/String;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->z:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->v:I

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->y:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->h:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/about/b/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->w:Lcom/alipay/mobile/about/b/b;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    return v0
.end method

.method static synthetic m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    return v0
.end method

.method static synthetic n(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m:I

    return v0
.end method

.method static synthetic o(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    return v0
.end method

.method static synthetic p(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->u:I

    return v0
.end method

.method static synthetic q(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->v:I

    return v0
.end method

.method static synthetic r(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    return v0
.end method

.method static synthetic t(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->B:Z

    return v0
.end method

.method static synthetic u(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic v(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->k:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->d:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->ab:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bw:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    iput-object v0, v2, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->a:Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/b/b;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->w:Lcom/alipay/mobile/about/b/b;

    iget-object v2, v2, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->a:Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2, v0, v4}, Lcom/alipay/mobile/about/b/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "from"

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "filter"

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "current_count"

    iget v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/content/Intent;)V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q:Landroid/content/Intent;

    const-string/jumbo v1, "bitmapUrls"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->finish()V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    const-string/jumbo v2, "bitmapUrl"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    const-string/jumbo v1, "from"

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aa:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->setContentView(I)V

    new-instance v0, Lcom/alipay/mobile/about/b/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->w:Lcom/alipay/mobile/about/b/b;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->g:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v0, "BUCKET_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->o:J

    const-string/jumbo v0, "folderName"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->p:Ljava/lang/String;

    const-string/jumbo v0, "from"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q:Landroid/content/Intent;

    const-string/jumbo v0, "filter"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r:Landroid/content/Intent;

    const-string/jumbo v2, "isFromBurning"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->B:Z

    :cond_0
    const-string/jumbo v0, "current_count"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->e:Landroid/os/Handler;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/alipay/mobile/about/ui/ah;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/ah;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fx:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object p0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->d:Landroid/content/Context;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cs:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u5df2\u9009\u62e9%d\u5f20\uff0c\u8fd8\u53ef\u4ee5\u9009\u62e9%d\u5f20"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m:I

    iget v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fy:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->k:Landroid/widget/HorizontalScrollView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bp:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/about/ui/ak;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/ak;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->s:Landroid/widget/Button;

    const-string/jumbo v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Z)V

    new-instance v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->h:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->h:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-static {p0, v0, v1, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->y:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/alipay/mobile/about/ui/ai;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/ai;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->x:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->w:Lcom/alipay/mobile/about/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/b/b;->b()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->C:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/about/ui/b/b;->a(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->c()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/about/ui/b/b;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "\u5df2\u9009\u62e9%d\u5f20\uff0c\u8fd8\u53ef\u4ee5\u9009\u62e9%d\u5f20"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m:I

    iget v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->e:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/about/ui/am;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/am;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Z)V

    :goto_2
    return-void

    :cond_1
    iget v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    iget v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m:I

    iget v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->d:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->Y:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/b/b;->a(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/about/ui/b/c;

    invoke-direct {v4, p3, p2}, Lcom/alipay/mobile/about/ui/b/c;-><init>(ILandroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/about/ui/b/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/mobile/about/ui/al;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/al;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n:I

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    return-void
.end method
