namespace ReleaseBinarySize;

internal static class BinarySizeFormatter
{
    public static string FormatBytes(long bytes)
    {
        var absolute = Math.Abs(bytes);

        if (absolute < 1024)
        {
            return $"{absolute} B";
        }

        if (absolute < 1024 * 1024)
        {
            return $"{absolute / 1024.0:F2} KB";
        }

        return $"{absolute / 1024.0 / 1024.0:F2} MB";
    }

    public static string FormatDelta(long current, long? previous)
    {
        if (previous is null or 0)
        {
            return "—";
        }

        var diff = current - previous.Value;
        if (diff == 0)
        {
            return "0 B (0.0%)";
        }

        var sign = diff > 0 ? "+" : "-";
        var percentage = previous.Value == 0 ? 0.0 : diff / (double)previous.Value * 100.0;

        return $"{sign}{FormatBytes(diff)} ({sign}{percentage:F1}%)";
    }
}
