export default function Home() {
  return (
    <div className="min-h-screen flex items-center justify-center">
      <div className="max-w-7xl w-full p-4">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
          {/* Left side content */}
          <div className="p-10 rounded-lg">
            <h1 className="text-3xl font-bold mb-2">Manusia Super</h1>
            <p className="text-lg">Pengamat Kehidupan Planet Jupiter</p>
            <button className="btn btn-primary mt-4">Hallo</button>
          </div>

          {/* Right side: keep it empty or add image/content later */}
          <div className="p-4 rounded-lg">
            {/* placeholder or future content */}
          </div>
        </div>
      </div>
    </div>
  );
}
